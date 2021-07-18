package §`!o§
{
   import §5t§.Log;
   import §`#@§.§'"y§;
   
   public class §4"0§
   {
       
      
      private var §^&§:Vector.<§return§>;
      
      public function §4"0§()
      {
         super();
         this.§^&§ = new Vector.<§return§>();
      }
      
      public function §,!-§(param1:Object) : void
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
               jsonObj = §'"y§.§!"T§(responseObj.json);
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
         var sc:§return§ = this.§0"2§(responseObj.C);
         if(responseObj.E)
         {
            this.§^""§(responseObj);
            return;
         }
         if(sc.§6!h§())
         {
            for each(fnc in sc.§[z§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            Log.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §^""§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§return§ = this.§0"2§(param1.C);
         if(_loc2_.§6!h§())
         {
            for each(_loc3_ in _loc2_.§[z§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            Log.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §%C§(param1:String, param2:Function) : void
      {
         var _loc3_:§return§ = new §return§(param1,param2);
         this.§^&§.push(_loc3_);
         Log.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §!!E§() : Vector.<§return§>
      {
         return this.§^&§;
      }
      
      public function §0"2§(param1:String) : §return§
      {
         var _loc2_:§return§ = null;
         for each(_loc2_ in this.§^&§)
         {
            if(_loc2_.§86§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
