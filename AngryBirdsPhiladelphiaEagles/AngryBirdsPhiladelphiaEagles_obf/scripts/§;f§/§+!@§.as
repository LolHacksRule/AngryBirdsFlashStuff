package §;f§
{
   import §`K§.§ L§;
   
   public class §+!@§
   {
       
      
      private var §6Z§:String;
      
      private var §>%§:Vector.<Function>;
      
      private var §'!+§:Boolean;
      
      public function §+!@§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         super();
         this.§6Z§ = param1;
         this.§'!+§ = param3;
         while(param2 != null)
         {
            if(!(_loc5_ && param2))
            {
               § L§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
               this.addCallback(param2);
               break;
            }
         }
      }
      
      public function §[U§() : String
      {
         return this.§6Z§;
      }
      
      public function §8>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§'!+§ = param1;
         }
      }
      
      public function §%-§() : Boolean
      {
         return this.§'!+§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§>%§ == null)
            {
               addr76:
               while(true)
               {
                  this.§>%§ = new Vector.<Function>();
                  addr82:
                  while(true)
                  {
                  }
               }
               addr76:
            }
            for(; this.§>%§.indexOf(param1) == -1; §§goto(addr82))
            {
               if(!(_loc2_ && _loc2_))
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  this.§>%§.push(param1);
               }
               if(_loc3_ || this)
               {
                  break;
               }
               §§goto(addr76);
            }
            return;
         }
         §§goto(addr76);
      }
      
      public function §=&§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§>%§.indexOf(param1) > -1)
            {
               if(!(_loc2_ && this))
               {
                  this.§>%§.splice(this.§>%§.indexOf(param1),1);
               }
            }
         }
      }
      
      public function §'!"§() : Vector.<Function>
      {
         return this.§>%§;
      }
   }
}
