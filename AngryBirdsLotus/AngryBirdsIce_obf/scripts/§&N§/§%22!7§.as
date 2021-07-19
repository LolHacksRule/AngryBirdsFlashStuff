package §&N§
{
   import §;8§.§3f§;
   
   public class §"!7§
   {
       
      
      private var §3[§:String;
      
      private var §[O§:Vector.<Function>;
      
      private var §'z§:Boolean;
      
      public function §"!7§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            this.§3[§ = param1;
         }
         loop0:
         while(true)
         {
            this.§'z§ = param3;
            if(param2 == null)
            {
               break;
            }
            while(_loc4_)
            {
               §3f§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
               do
               {
                  this.addCallback(param2);
               }
               while(_loc5_);
               
               if(!_loc5_)
               {
                  break loop0;
               }
            }
         }
      }
      
      public function §2m§() : String
      {
         return this.§3[§;
      }
      
      public function §"c§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§'z§ = param1;
         }
      }
      
      public function §9N§() : Boolean
      {
         return this.§'z§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§[O§ == null)
            {
               while(true)
               {
                  this.§[O§ = new Vector.<Function>();
                  addr86:
                  while(true)
                  {
                  }
                  addr64:
                  if(_loc3_ && param1)
                  {
                     continue;
                  }
                  this.§[O§.push(param1);
                  addr24:
                  return;
                  addr75:
               }
            }
            while(this.§[O§.indexOf(param1) == -1)
            {
               if(!(_loc3_ && param1))
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr64);
               }
               §§goto(addr75);
            }
            §§goto(addr24);
         }
         §§goto(addr86);
      }
      
      public function §2&§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§[O§.indexOf(param1) > -1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr46:
                  this.§[O§.splice(this.§[O§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function § !"§() : Vector.<Function>
      {
         return this.§[O§;
      }
   }
}
