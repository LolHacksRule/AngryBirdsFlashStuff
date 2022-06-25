package §^!7§
{
   import §<u§.Log;
   
   public class ServerCommand
   {
       
      
      private var §0!;§:String;
      
      private var §[^§:Vector.<Function>;
      
      private var §>"§:Boolean;
      
      public function ServerCommand(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§0!;§ = param1;
               addr88:
               while(true)
               {
                  this.§>"§ = param3;
               }
               addr30:
               if(_loc5_ && param2)
               {
                  continue;
               }
               §§goto(addr19);
            }
         }
         while(param2 != null)
         {
            if(!(_loc5_ && param2))
            {
               if(_loc5_)
               {
                  continue;
               }
               Log.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            }
            while(!_loc5_)
            {
               this.addCallback(param2);
               if(_loc5_)
               {
                  continue;
               }
               §§goto(addr30);
            }
            §§goto(addr88);
         }
         addr19:
      }
      
      public function §#S§() : String
      {
         return this.§0!;§;
      }
      
      public function §1!g§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>"§ = param1;
         }
      }
      
      public function §;!I§() : Boolean
      {
         return this.§>"§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§[^§ == null)
            {
               if(_loc2_)
               {
                  this.§[^§ = new Vector.<Function>();
               }
               while(true)
               {
               }
               addr79:
            }
            while(this.§[^§.indexOf(param1) == -1)
            {
               if(!(_loc3_ && param1))
               {
                  if(!_loc2_)
                  {
                     §§goto(addr79);
                     continue;
                  }
                  this.§[^§.push(param1);
               }
               break;
            }
            return;
         }
         §§goto(addr59);
      }
      
      public function §>!X§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§[^§.indexOf(param1) > -1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this.§[^§.splice(this.§[^§.indexOf(param1),1);
               }
            }
         }
      }
      
      public function §6z§() : Vector.<Function>
      {
         return this.§[^§;
      }
   }
}
