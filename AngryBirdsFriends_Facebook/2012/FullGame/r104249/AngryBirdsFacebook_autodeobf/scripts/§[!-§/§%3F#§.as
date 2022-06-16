package §[!-§
{
   import §3I§.§3!b§;
   import §[x§.§%3§;
   
   public class §?#§
   {
       
      
      private var §,>§:Vector.<§^?§>;
      
      public function §?#§()
      {
         super();
         this.§,>§ = new Vector.<§^?§>();
      }
      
      public function §0"G§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §%3§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §3!b§.§4%§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §%3§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§^?§ = this.§3Q§(responseObj.C);
         if(responseObj.E)
         {
            this.§1]§(responseObj);
            return;
         }
         if(sc.§ !J§())
         {
            for each(fnc in sc.§4!z§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §%3§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §1]§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§^?§ = this.§3Q§(param1.C);
         if(_loc2_.§ !J§())
         {
            for each(_loc3_ in _loc2_.§4!z§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §%3§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §@[§(param1:String, param2:Function) : void
      {
         var _loc3_:§^?§ = new §^?§(param1,param2);
         this.§,>§.push(_loc3_);
         §%3§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §7"F§() : Vector.<§^?§>
      {
         return this.§,>§;
      }
      
      public function §3Q§(param1:String) : §^?§
      {
         var _loc2_:§^?§ = null;
         for each(_loc2_ in this.§,>§)
         {
            if(_loc2_.§>"+§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
