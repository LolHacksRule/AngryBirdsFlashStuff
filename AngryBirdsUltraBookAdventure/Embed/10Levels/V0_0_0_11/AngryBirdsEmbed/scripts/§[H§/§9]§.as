package §[H§
{
   import §0!<§.§#y§;
   
   public class §9]§
   {
       
      
      private var §>!F§:String;
      
      private var §;D§:Vector.<Function>;
      
      private var §4&§:Boolean;
      
      public function §9]§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super();
            this.§>!F§ = param1;
         }
         this.§4&§ = param3;
         if(!_loc4_)
         {
            if(param2 != null)
            {
               addr47:
               §#y§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
               if(!_loc4_)
               {
                  this.addCallback(param2);
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §;m§() : String
      {
         return this.§>!F§;
      }
      
      public function §]y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4&§ = param1;
         }
      }
      
      public function §case §() : Boolean
      {
         return this.§4&§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§;D§ == null)
            {
               if(_loc2_ || param1)
               {
                  this.§;D§ = new Vector.<Function>();
                  if(!(_loc3_ && param1))
                  {
                     addr67:
                     if(this.§;D§.indexOf(param1) == -1)
                     {
                        if(_loc2_)
                        {
                           this.§;D§.push(param1);
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr67);
      }
      
      public function §class§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§;D§.indexOf(param1) > -1)
            {
               if(_loc2_ || _loc3_)
               {
                  this.§;D§.splice(this.§;D§.indexOf(param1),1);
               }
            }
         }
      }
      
      public function §1G§() : Vector.<Function>
      {
         return this.§;D§;
      }
   }
}
