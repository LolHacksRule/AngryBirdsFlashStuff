package §7X§
{
   import §"x§.§-8§;
   
   public class §1!u§
   {
       
      
      private var §^]§:String;
      
      private var §[X§:Vector.<Function>;
      
      private var §<=§:Boolean;
      
      public function §1!u§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super();
            while(true)
            {
               this.§^]§ = param1;
               addr101:
               addr57:
               while(true)
               {
                  this.§<=§ = param3;
               }
               if(_loc4_ && param2)
               {
                  continue;
               }
               §§goto(addr25);
            }
         }
         for(; param2 != null; do
         {
            this.addCallback(param2);
         }
         while(!(_loc5_ || param3));
         ,if(_loc4_ && param3)
         {
            continue;
         },§§goto(addr57))
         {
            if(_loc4_ && param3)
            {
               continue;
            }
            if(_loc5_)
            {
               §-8§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
               continue;
            }
            §§goto(addr101);
         }
         addr25:
      }
      
      public function §@t§() : String
      {
         return this.§^]§;
      }
      
      public function §=!3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<=§ = param1;
         }
      }
      
      public function § g§() : Boolean
      {
         return this.§<=§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§[X§ == null)
            {
               while(true)
               {
                  this.§[X§ = new Vector.<Function>();
                  addr81:
                  while(true)
                  {
                  }
               }
               addr75:
            }
            while(this.§[X§.indexOf(param1) == -1)
            {
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     this.§[X§.push(param1);
                  }
                  else
                  {
                     §§goto(addr75);
                  }
               }
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               §§goto(addr81);
            }
            return;
         }
         §§goto(addr81);
      }
      
      public function §&!0§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§[X§.indexOf(param1) > -1)
            {
               if(_loc2_ || this)
               {
                  this.§[X§.splice(this.§[X§.indexOf(param1),1);
               }
            }
         }
      }
      
      public function §^!^§() : Vector.<Function>
      {
         return this.§[X§;
      }
   }
}
