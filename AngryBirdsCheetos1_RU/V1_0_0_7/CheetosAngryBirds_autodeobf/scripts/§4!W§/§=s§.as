package §4!W§
{
   import §'D§.§8e§;
   import §@F§.§9!U§;
   
   public class §=s§
   {
       
      
      private var §'!Z§:Vector.<§>!V§>;
      
      public function §=s§()
      {
         super();
         this.§'!Z§ = new Vector.<§>!V§>();
      }
      
      public function §<B§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §8e§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §9!U§.§[M§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §8e§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§>!V§ = this.§;!^§(responseObj.C);
         if(responseObj.E)
         {
            this.§0!V§(responseObj);
            return;
         }
         if(sc.§2!5§())
         {
            for each(fnc in sc.§,!G§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §8e§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §0!V§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§>!V§ = this.§;!^§(param1.C);
         if(_loc2_.§2!5§())
         {
            for each(_loc3_ in _loc2_.§,!G§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §8e§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §'v§(param1:String, param2:Function) : void
      {
         var _loc3_:§>!V§ = new §>!V§(param1,param2);
         this.§'!Z§.push(_loc3_);
         §8e§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §%b§() : Vector.<§>!V§>
      {
         return this.§'!Z§;
      }
      
      public function §;!^§(param1:String) : §>!V§
      {
         var _loc2_:§>!V§ = null;
         for each(_loc2_ in this.§'!Z§)
         {
            if(_loc2_.§7i§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
