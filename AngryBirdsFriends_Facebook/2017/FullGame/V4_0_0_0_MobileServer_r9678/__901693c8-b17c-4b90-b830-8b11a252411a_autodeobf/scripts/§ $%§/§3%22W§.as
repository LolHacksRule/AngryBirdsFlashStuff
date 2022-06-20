package § $%§
{
   import §'!g§.§8!u§;
   import §<"p§.§?!T§;
   
   public class §3"W§
   {
       
      
      private var §7"z§:Vector.<§-J§>;
      
      public function §3"W§()
      {
         super();
         this.§7"z§ = new Vector.<§-J§>();
      }
      
      public function §2#B§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §?!T§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §8!u§.§;#I§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §?!T§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§-J§ = this.§'"u§(responseObj.C);
         if(responseObj.E)
         {
            this.§"#i§(responseObj);
            return;
         }
         if(sc.§83§())
         {
            for each(fnc in sc.§]""§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §?!T§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §"#i§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§-J§ = this.§'"u§(param1.C);
         if(_loc2_.§83§())
         {
            for each(_loc3_ in _loc2_.§]""§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §?!T§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §9"`§(param1:String, param2:Function) : void
      {
         var _loc3_:§-J§ = new §-J§(param1,param2);
         this.§7"z§.push(_loc3_);
         §?!T§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §;W§() : Vector.<§-J§>
      {
         return this.§7"z§;
      }
      
      public function §'"u§(param1:String) : §-J§
      {
         var _loc2_:§-J§ = null;
         for each(_loc2_ in this.§7"z§)
         {
            if(_loc2_.§+$8§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
