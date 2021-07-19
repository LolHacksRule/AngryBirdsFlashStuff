package §<+§
{
   import flash.utils.getTimer;
   
   public class §55§
   {
       
      
      private var mName:String;
      
      private var §<!2§:String;
      
      private var §-!$§:String;
      
      private var §,!G§:String;
      
      private var § 5§:uint;
      
      private var §#D§:uint;
      
      private var static:uint;
      
      private var §?!c§:Boolean = false;
      
      public function §55§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         do
         {
            this.static = getTimer();
         }
         while(!(_loc2_ || this));
         
      }
      
      public function get §74§() : Boolean
      {
         return this.§?!c§;
      }
      
      public function set §74§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?!c§ = param1;
         }
      }
      
      public function get §#]§() : String
      {
         return this.§,!G§;
      }
      
      public function set §#]§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,!G§ = param1;
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
         if(_loc3_ || _loc3_)
         {
            this.mName = param1;
         }
      }
      
      public function get §6!W§() : String
      {
         return this.§<!2§;
      }
      
      public function set §6!W§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<!2§ = param1;
         }
      }
      
      public function get §3?§() : String
      {
         return this.§-!$§;
      }
      
      public function set §3?§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-!$§ = param1;
         }
      }
      
      public function get §&!C§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§ 5§ = getTimer() - this.static;
         }
         return this.§ 5§;
      }
      
      public function get §3n§() : uint
      {
         return this.§#D§;
      }
      
      public function set §3n§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§#D§ = param1;
         }
      }
      
      public function get §extends§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§#]§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc2_ || _loc2_)
               {
                  §§push(!§§pop());
                  if(!_loc1_)
                  {
                     addr102:
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 if(_loc1_ && this)
                                 {
                                    continue loop0;
                                 }
                                 §§push(true);
                              }
                              else
                              {
                                 addr20:
                                 §§push(false);
                                 if(_loc2_)
                                 {
                                    return §§pop();
                                 }
                                 addr77:
                              }
                              addr76:
                              return §§pop();
                           }
                           §§goto(addr20);
                        }
                        addr59:
                     }
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                     addr42:
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     §§goto(addr59);
                  }
               }
               §§goto(addr102);
            }
         }
         §§goto(addr77);
      }
   }
}
