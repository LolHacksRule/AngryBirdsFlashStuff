package §+?§
{
   import §+!"§.§5!<§;
   
   public class §8T§
   {
       
      
      private var §9!9§:String;
      
      private var §[!?§:Vector.<Function>;
      
      private var §72§:Boolean;
      
      public function §8T§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super();
            this.§9!9§ = param1;
         }
         this.§72§ = param3;
         if(!_loc4_)
         {
            if(param2 != null)
            {
               addr47:
               §5!<§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
               if(!_loc4_)
               {
                  this.addCallback(param2);
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §2<§() : String
      {
         return this.§9!9§;
      }
      
      public function §0[§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§72§ = param1;
         }
      }
      
      public function §]v§() : Boolean
      {
         return this.§72§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§[!?§ == null)
            {
               if(_loc2_ || param1)
               {
                  this.§[!?§ = new Vector.<Function>();
                  if(!(_loc3_ && param1))
                  {
                     addr67:
                     if(this.§[!?§.indexOf(param1) == -1)
                     {
                        if(_loc2_)
                        {
                           this.§[!?§.push(param1);
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr67);
      }
      
      public function §?`§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§[!?§.indexOf(param1) > -1)
            {
               if(_loc2_ || _loc3_)
               {
                  this.§[!?§.splice(this.§[!?§.indexOf(param1),1);
               }
            }
         }
      }
      
      public function §%!A§() : Vector.<Function>
      {
         return this.§[!?§;
      }
   }
}
