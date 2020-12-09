class Library:                                                                                   #Create a class 'Library'
    def __init__(self, list, name):                                                              #Constructor (Arguments)
        self.booksList = list                                                                    #List of Books
        self.Library_name = name                                                                 #Name of Library
        self.lendDict = {}                                                                       #Create Empty Dictonary for lend books

    def displayBooks(self):                                                                      #Display Book Function
        print(f"=====List of books in {self.Library_name}=====\n")
        for book in self.booksList:
            print(book)

    def lendBook(self, user, book):
        if book not in self.lendDict.keys():
            self.lendDict.update({book:user})
            print("Your Information has ben updated ... You can take your book now ...")
        else:
            print(f"Book is already lended by {self.lendDict[book]}")

    def addBook(self, book):
        self.booksList.append(book)
        print("Now You can Check the book list, it has been added")

    def returnBook(self, book):
        self.lendDict.pop(book)

if __name__ == '__main__':

    store = Library(['একাত্তরের দিনগুলি', 'Pather Panchali', 'The Good Muslim', 'ফুলের গন্ধে ঘুম আসে না ','Bengali Girls Do not','দীপু নাম্বার টু','দীপু নাম্বার টু','হাজার বছর ধরে''......................','......................'],"DIU Library")
    print("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t*****************************************************************************\n")
    print("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t*                        -----------------------------                      *\n")
    print("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t*                           WELCOME  TO Our Project                         *\n")
    print("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t*                        -----------------------------                      *\n")
    print("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t*                          --This Project made by---                        *\n")
    print("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t*                 1.Nusrat Jahan Marjana & 2.Marjea Anam Mila               *\n")
    print("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t*                       ID:191-15-12999 & ID:191-15-12987                   *\n")
    print("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t*                               DIU,Dept of CSE                             *\n")
    print("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t*****************************************************************************\n ")

    while(True):

        print(f"\n ======***Now You are in {store.Library_name}***=======\n\t****Choose Your Option From Menu****\n\n")
        print('---Menu---')
        print("1. Display Books")
        print("2. Lend a Book")
        print("3. Add a Book")
        print("4. Return a Book\n")
        user_choice = input()
        if user_choice not in ['1','2','3','4']:
            print("Please enter a valid option")
            continue

        else:
            user_choice = int(user_choice)


        if user_choice == 1:
            store.displayBooks()

        elif user_choice == 2:
            book = input("---Thanks For Coming,You are here to Lend Book---  \nNow Enter the Book Name :")
            user = input("Enter your name:")
            store.lendBook(user, book)

        elif user_choice == 3:
            print(f"=====Add Books=====\n")
            book = input("Add Your Book:")
            store.addBook(book)

        elif user_choice == 4:
            book = input("Enter the name of the book you want to return:")
            store.returnBook(book)
            print('..........', 'Thanks For Return Our Book', '..........')


        else:
            print(" ")

        print("\n ----**Wanna Continue ???**--- \n\t>>>If Yes,Then Press 1 to Continue.\n\t>>>If No,Then Press 0 to Quit.")
        user_choice2 = ""
        while (user_choice2 != "1" and user_choice2 != "0"):
            user_choice2 = input()
            if user_choice2 == "0":
                exit("\n\t\t***Happy Coding***\n\n\n")

            elif user_choice2 == "1":
                continue