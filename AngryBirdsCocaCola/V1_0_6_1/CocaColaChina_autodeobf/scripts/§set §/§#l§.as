package §set §
{
   import §<!!§.§-"§;
   import §[T§.§@!a§;
   
   public class §#l§
   {
       
      
      private var §&^§:Vector.<§@!>§>;
      
      public function §#l§()
      {
         super();
         this.§&^§ = new Vector.<§@!>§>();
      }
      
      public function §4!-§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §-"§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §@!a§.§>!P§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §-"§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§@!>§ = this.§<X§(responseObj.C);
         if(responseObj.E)
         {
            this.§0T§(responseObj);
            return;
         }
         if(sc.§+q§())
         {
            for each(fnc in sc.§=U§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §-"§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §0T§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§@!>§ = this.§<X§(param1.C);
         if(_loc2_.§+q§())
         {
            for each(_loc3_ in _loc2_.§=U§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §-"§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §&&§(param1:String, param2:Function) : void
      {
         var _loc3_:§@!>§ = new §@!>§(param1,param2);
         this.§&^§.push(_loc3_);
         §-"§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §'>§() : Vector.<§@!>§>
      {
         return this.§&^§;
      }
      
      public function §<X§(param1:String) : §@!>§
      {
         var _loc2_:§@!>§ = null;
         for each(_loc2_ in this.§&^§)
         {
            if(_loc2_.§%o§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
