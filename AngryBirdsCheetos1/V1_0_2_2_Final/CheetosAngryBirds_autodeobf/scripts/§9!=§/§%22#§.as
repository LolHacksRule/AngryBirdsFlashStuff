package §9!=§
{
   import § !G§.§ #§;
   import §=A§.§5r§;
   
   public class §"#§
   {
       
      
      private var §63§:Vector.<§5z§>;
      
      public function §"#§()
      {
         super();
         this.§63§ = new Vector.<§5z§>();
      }
      
      public function §do§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            § #§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §5r§.§6! §(responseObj.json);
               for(k2 in jsonObj)
               {
                  § #§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§5z§ = this.§;!!§(responseObj.C);
         if(responseObj.E)
         {
            this.§!!Y§(responseObj);
            return;
         }
         if(sc.§0!X§())
         {
            for each(fnc in sc.§&,§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            § #§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §!!Y§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§5z§ = this.§;!!§(param1.C);
         if(_loc2_.§0!X§())
         {
            for each(_loc3_ in _loc2_.§&,§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            § #§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §%!G§(param1:String, param2:Function) : void
      {
         var _loc3_:§5z§ = new §5z§(param1,param2);
         this.§63§.push(_loc3_);
         § #§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §>T§() : Vector.<§5z§>
      {
         return this.§63§;
      }
      
      public function §;!!§(param1:String) : §5z§
      {
         var _loc2_:§5z§ = null;
         for each(_loc2_ in this.§63§)
         {
            if(_loc2_.§5![§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
