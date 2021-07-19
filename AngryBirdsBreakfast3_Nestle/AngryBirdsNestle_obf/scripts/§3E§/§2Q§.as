package §3E§
{
   import flash.utils.getTimer;
   
   public class §2Q§
   {
       
      
      private var mName:String;
      
      private var §3!n§:String;
      
      private var §?0§:String;
      
      private var §-!X§:String;
      
      private var §1!r§:String;
      
      private var §9H§:uint;
      
      private var §,!0§:uint;
      
      private var §'!;§:uint;
      
      private var § [§:Boolean = false;
      
      public function §2Q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            do
            {
               this.§'!;§ = getTimer();
            }
            while(!_loc2_);
            
         }
      }
      
      public function get §,!k§() : Boolean
      {
         return this.§ [§;
      }
      
      public function set §,!k§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§ [§ = param1;
         }
      }
      
      public function get §&"!§() : String
      {
         return this.§1!r§;
      }
      
      public function set §&"!§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§1!r§ = param1;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mName = param1;
         }
      }
      
      public function get id() : String
      {
         return this.§?0§;
      }
      
      public function set id(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?0§ = param1;
         }
      }
      
      public function get password() : String
      {
         return this.§-!X§;
      }
      
      public function set password(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-!X§ = param1;
         }
      }
      
      public function get §%k§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§9H§ = getTimer() - this.§'!;§;
         }
         return this.§9H§;
      }
      
      public function get §?!G§() : uint
      {
         return this.§,!0§;
      }
      
      public function set §?!G§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§,!0§ = param1;
         }
      }
      
      public function get §-n§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§&"!§);
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
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                    break loop6;
                                 }
                                 addr72:
                              }
                              else if(!(_loc1_ || this))
                              {
                                 continue loop0;
                              }
                           }
                           §§push(false);
                           if(!(_loc1_ || this))
                           {
                              break;
                           }
                           if(_loc1_)
                           {
                              return §§pop();
                           }
                           addr61:
                           while(_loc1_ || _loc1_)
                           {
                              continue loop6;
                           }
                        }
                        while(true)
                        {
                           if(!(_loc2_ && this))
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
               while(!(_loc1_ || _loc2_));
               
               return §§pop();
            }
         }
         §§goto(addr72);
      }
      
      public function get §["'§() : String
      {
         return this.§3!n§;
      }
      
      public function set §["'§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§3!n§ = param1;
         }
      }
   }
}
