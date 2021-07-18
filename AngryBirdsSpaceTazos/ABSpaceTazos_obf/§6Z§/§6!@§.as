package §6Z§
{
   import flash.utils.getTimer;
   
   public class §6!@§
   {
       
      
      private var mName:String;
      
      private var §3!j§:String;
      
      private var §[!o§:String;
      
      private var §5!u§:String;
      
      private var §30§:String;
      
      private var §+!,§:uint;
      
      private var §7"D§:uint;
      
      private var §&"#§:uint;
      
      private var §#"6§:Boolean = false;
      
      public function §6!@§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
         do
         {
            this.§&"#§ = getTimer();
         }
         while(!(_loc2_ || this));
         
      }
      
      public function get §`!F§() : Boolean
      {
         return this.§#"6§;
      }
      
      public function set §`!F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§#"6§ = param1;
         }
      }
      
      public function get §,!0§() : String
      {
         return this.§30§;
      }
      
      public function set §,!0§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§30§ = param1;
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
         if(_loc2_ || _loc2_)
         {
            this.mName = param1;
         }
      }
      
      public function get id() : String
      {
         return this.§[!o§;
      }
      
      public function set id(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[!o§ = param1;
         }
      }
      
      public function get password() : String
      {
         return this.§5!u§;
      }
      
      public function set password(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§5!u§ = param1;
         }
      }
      
      public function get §1!F§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§+!,§ = getTimer() - this.§&"#§;
         }
         return this.§+!,§;
      }
      
      public function get §6!e§() : uint
      {
         return this.§7"D§;
      }
      
      public function set §6!e§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§7"D§ = param1;
         }
      }
      
      public function get §8B§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§,!0§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(!_loc1_)
               {
                  §§push(!§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              break loop1;
                           }
                           if(!_loc1_)
                           {
                              addr74:
                              break;
                           }
                           continue loop0;
                        }
                        §§push(false);
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                        addr71:
                        addr71:
                        return §§pop();
                        addr61:
                     }
                  }
                  §§goto(addr71);
                  §§push(true);
                  addr92:
               }
               addr94:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr74);
      }
      
      public function get email() : String
      {
         return this.§3!j§;
      }
      
      public function set email(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§3!j§ = param1;
         }
      }
   }
}
