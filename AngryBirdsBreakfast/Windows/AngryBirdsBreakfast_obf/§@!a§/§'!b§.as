package §@!a§
{
   import flash.utils.getTimer;
   
   public class §'!b§
   {
       
      
      private var mName:String;
      
      private var §%!A§:String;
      
      private var §>6§:String;
      
      private var §`&§:String;
      
      private var §>!L§:String;
      
      private var §^!9§:uint;
      
      private var §1V§:uint;
      
      private var § " §:uint;
      
      private var §`u§:Boolean = false;
      
      public function §'!b§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
            do
            {
               this.§ " § = getTimer();
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function get §'3§() : Boolean
      {
         return this.§`u§;
      }
      
      public function set §'3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§`u§ = param1;
         }
      }
      
      public function get §4J§() : String
      {
         return this.§>!L§;
      }
      
      public function set §4J§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>!L§ = param1;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.mName = param1;
         }
      }
      
      public function get id() : String
      {
         return this.§>6§;
      }
      
      public function set id(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>6§ = param1;
         }
      }
      
      public function get password() : String
      {
         return this.§`&§;
      }
      
      public function set password(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`&§ = param1;
         }
      }
      
      public function get §1@§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§^!9§ = getTimer() - this.§ " §;
         }
         return this.§^!9§;
      }
      
      public function get §`f§() : uint
      {
         return this.§1V§;
      }
      
      public function set §`f§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§1V§ = param1;
         }
      }
      
      public function get §,!T§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§4J§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               do
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 §§push(true);
                              }
                              else
                              {
                                 if(_loc2_ && _loc1_)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    addr24:
                                    while(true)
                                    {
                                       §§push(false);
                                       if(_loc1_ || _loc1_)
                                       {
                                          if(_loc1_ || _loc2_)
                                          {
                                             break loop5;
                                          }
                                          addr118:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                              addr78:
                           }
                           §§goto(addr24);
                        }
                        return §§pop();
                        addr73:
                     }
                     §§goto(addr118);
                  }
               }
               while(_loc2_ && this);
               
               return §§pop();
            }
         }
         §§goto(addr100);
      }
      
      public function get §1!^§() : String
      {
         return this.§%!A§;
      }
      
      public function set §1!^§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%!A§ = param1;
         }
      }
   }
}
