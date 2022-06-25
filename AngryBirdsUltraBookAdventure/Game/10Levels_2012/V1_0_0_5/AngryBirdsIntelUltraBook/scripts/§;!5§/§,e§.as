package §;!5§
{
   import §^_§.§!>§;
   
   public class §,e§
   {
       
      
      private var §7D§:String;
      
      private var §`>§:Vector.<Function>;
      
      private var §<P§:Boolean;
      
      public function §,e§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
         }
         while(true)
         {
            this.§7D§ = param1;
            loop1:
            while(_loc5_ || param1)
            {
               this.§<P§ = param3;
               loop2:
               while(true)
               {
                  if(_loc5_ || param2)
                  {
                     if(param2 != null)
                     {
                        do
                        {
                           §!>§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
                           continue loop2;
                        }
                        while(_loc4_);
                        
                        break;
                     }
                     break;
                  }
                  continue loop1;
               }
               return;
            }
         }
      }
      
      public function §>q§() : String
      {
         return this.§7D§;
      }
      
      public function § var§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§<P§ = param1;
         }
      }
      
      public function §#@§() : Boolean
      {
         return this.§<P§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§`>§ == null)
            {
               addr75:
               while(true)
               {
                  this.§`>§ = new Vector.<Function>();
                  addr81:
                  while(true)
                  {
                  }
               }
               addr75:
            }
            while(this.§`>§.indexOf(param1) == -1)
            {
               if(!_loc3_)
               {
                  if(_loc3_)
                  {
                     §§goto(addr81);
                     continue;
                  }
                  if(_loc2_ || this)
                  {
                     this.§`>§.push(param1);
                  }
                  else
                  {
                     §§goto(addr75);
                  }
               }
               break;
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function §<a§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§`>§.indexOf(param1) > -1)
            {
               if(_loc3_ || _loc3_)
               {
                  addr42:
                  this.§`>§.splice(this.§`>§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function §#!R§() : Vector.<Function>
      {
         return this.§`>§;
      }
   }
}
