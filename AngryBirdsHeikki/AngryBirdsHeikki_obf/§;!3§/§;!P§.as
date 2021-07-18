package §;!3§
{
   import flash.utils.getTimer;
   
   public class §;!P§
   {
       
      
      private var mName:String;
      
      private var §6u§:String;
      
      private var §]<§:String;
      
      private var §,!O§:String;
      
      private var §#k§:uint;
      
      private var §%!%§:uint;
      
      private var §-o§:uint;
      
      private var § R§:Boolean = false;
      
      public function §;!P§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
         do
         {
            this.§-o§ = getTimer();
         }
         while(!_loc1_);
         
      }
      
      public function get §7L§() : Boolean
      {
         return this.§ R§;
      }
      
      public function set §7L§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ R§ = param1;
         }
      }
      
      public function get §]_§() : String
      {
         return this.§,!O§;
      }
      
      public function set §]_§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§,!O§ = param1;
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
      
      public function get §5!D§() : String
      {
         return this.§6u§;
      }
      
      public function set §5!D§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§6u§ = param1;
         }
      }
      
      public function get password() : String
      {
         return this.§]<§;
      }
      
      public function set password(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§]<§ = param1;
         }
      }
      
      public function get §@!X§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§#k§ = getTimer() - this.§-o§;
         }
         return this.§#k§;
      }
      
      public function get §7!M§() : uint
      {
         return this.§%!%§;
      }
      
      public function set §7!M§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§%!%§ = param1;
         }
      }
      
      public function get §5!M§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§]_§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc1_ || _loc1_)
               {
                  §§push(!§§pop());
               }
               do
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc1_ || this)
                           {
                              addr79:
                              §§push(true);
                           }
                           else
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              addr19:
                              §§push(false);
                              if(!_loc2_)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    break;
                                 }
                                 addr108:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                 }
                              }
                           }
                           addr80:
                           return §§pop();
                        }
                        §§goto(addr19);
                     }
                     continue;
                     addr70:
                  }
                  §§goto(addr108);
               }
               while(_loc2_ && this);
               
               return §§pop();
            }
         }
         §§goto(addr79);
      }
   }
}
