package §;c§
{
   import §1!K§.§>!<§;
   import §6Q§.§'!M§;
   
   public class §^q§
   {
       
      
      private var §^`§:Vector.<§=<§>;
      
      public function §^q§()
      {
         super();
         this.§^`§ = new Vector.<§=<§>();
      }
      
      public function §1o§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §>!<§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §'!M§.§+f§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §>!<§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§=<§ = this.§%%§(responseObj.C);
         if(responseObj.E)
         {
            this.§9Q§(responseObj);
            return;
         }
         if(sc.§<!-§())
         {
            for each(fnc in sc.§;;§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §>!<§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §9Q§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§=<§ = this.§%%§(param1.C);
         if(_loc2_.§<!-§())
         {
            for each(_loc3_ in _loc2_.§;;§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §>!<§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §8K§(param1:String, param2:Function) : void
      {
         var _loc3_:§=<§ = new §=<§(param1,param2);
         this.§^`§.push(_loc3_);
         §>!<§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §5'§() : Vector.<§=<§>
      {
         return this.§^`§;
      }
      
      public function §%%§(param1:String) : §=<§
      {
         var _loc2_:§=<§ = null;
         for each(_loc2_ in this.§^`§)
         {
            if(_loc2_.§]!5§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
