package §7"1§
{
   import §#"3§.§4!h§;
   import §else §.§1"#§;
   
   public class §=$0§
   {
       
      
      private var §&"8§:Vector.<§,>§>;
      
      public function §=$0§()
      {
         super();
         this.§&"8§ = new Vector.<§,>§>();
      }
      
      public function §>=§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §4!h§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §1"#§.§8#Z§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §4!h§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§,>§ = this.§1"Q§(responseObj.C);
         if(responseObj.E)
         {
            this.§6#&§(responseObj);
            return;
         }
         if(sc.§6#9§())
         {
            for each(fnc in sc.§3#S§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §4!h§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §6#&§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§,>§ = this.§1"Q§(param1.C);
         if(_loc2_.§6#9§())
         {
            for each(_loc3_ in _loc2_.§3#S§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §4!h§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §]9§(param1:String, param2:Function) : void
      {
         var _loc3_:§,>§ = new §,>§(param1,param2);
         this.§&"8§.push(_loc3_);
         §4!h§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §#"W§() : Vector.<§,>§>
      {
         return this.§&"8§;
      }
      
      public function §1"Q§(param1:String) : §,>§
      {
         var _loc2_:§,>§ = null;
         for each(_loc2_ in this.§&"8§)
         {
            if(_loc2_.§7`§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
