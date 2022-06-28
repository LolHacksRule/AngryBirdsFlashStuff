package §4!C§
{
   import §&!4§.§ !J§;
   import §6z§.§[g§;
   
   public class §7b§
   {
       
      
      private var §3K§:Vector.<§!!^§>;
      
      public function §7b§()
      {
         super();
         this.§3K§ = new Vector.<§!!^§>();
      }
      
      public function §8Z§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §[g§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = § !J§.§!!R§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §[g§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§!!^§ = this.§;!A§(responseObj.C);
         if(responseObj.E)
         {
            this.§5!<§(responseObj);
            return;
         }
         if(sc.§>%§())
         {
            for each(fnc in sc.§]9§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §[g§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §5!<§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§!!^§ = this.§;!A§(param1.C);
         if(_loc2_.§>%§())
         {
            for each(_loc3_ in _loc2_.§]9§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §[g§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §1!,§(param1:String, param2:Function) : void
      {
         var _loc3_:§!!^§ = new §!!^§(param1,param2);
         this.§3K§.push(_loc3_);
         §[g§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §+<§() : Vector.<§!!^§>
      {
         return this.§3K§;
      }
      
      public function §;!A§(param1:String) : §!!^§
      {
         var _loc2_:§!!^§ = null;
         for each(_loc2_ in this.§3K§)
         {
            if(_loc2_.§>3§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
