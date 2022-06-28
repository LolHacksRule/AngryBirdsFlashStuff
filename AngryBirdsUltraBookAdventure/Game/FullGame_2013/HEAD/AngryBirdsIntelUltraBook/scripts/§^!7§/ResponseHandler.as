package §^!7§
{
   import §<u§.Log;
   import §>o§.§7b§;
   
   public class ResponseHandler
   {
       
      
      private var §9S§:Vector.<ServerCommand>;
      
      public function ResponseHandler()
      {
         super();
         this.§9S§ = new Vector.<ServerCommand>();
      }
      
      public function §4!N§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            Log.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §7b§.§#!a§(responseObj.json);
               for(k2 in jsonObj)
               {
                  Log.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:ServerCommand = this.§1![§(responseObj.C);
         if(responseObj.E)
         {
            this.§=c§(responseObj);
            return;
         }
         if(sc.§;!I§())
         {
            for each(fnc in sc.§6z§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            Log.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §=c§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:ServerCommand = this.§1![§(param1.C);
         if(_loc2_.§;!I§())
         {
            for each(_loc3_ in _loc2_.§6z§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            Log.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §]g§(param1:String, param2:Function) : void
      {
         var _loc3_:ServerCommand = new ServerCommand(param1,param2);
         this.§9S§.push(_loc3_);
         Log.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §?!W§() : Vector.<ServerCommand>
      {
         return this.§9S§;
      }
      
      public function §1![§(param1:String) : ServerCommand
      {
         var _loc2_:ServerCommand = null;
         for each(_loc2_ in this.§9S§)
         {
            if(_loc2_.§#S§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
