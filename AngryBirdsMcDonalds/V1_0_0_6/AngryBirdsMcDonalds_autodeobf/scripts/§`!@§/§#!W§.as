package §`!@§
{
   import §5!;§.§40§;
   import §<!b§.§2!c§;
   import flash.net.SharedObject;
   
   public class §#!W§
   {
      
      protected static const §1Y§:int = 365;
      
      protected static const §8x§:Array = [§@;§.CHROME];
       
      
      public var data:Object;
      
      private var §@E§:String = "";
      
      private var §[c§:Boolean = false;
      
      private var §9b§:String = "";
      
      public function §#!W§(param1:String)
      {
         super();
         this.§@E§ = §@;§.§3!"§();
         this.§9b§ = param1;
         this.§[c§ = §8x§.indexOf(this.§@E§) != -1;
         this.§;!O§();
      }
      
      public static function getLocal(param1:String) : §#!W§
      {
         return new §#!W§(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.§[c§)
         {
            this.§%!5§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§9b§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.§[c§)
            {
               this.§8!G§();
            }
            else
            {
               this.§87§();
            }
         }
      }
      
      private function §%!5§() : void
      {
         §40§.§&'§("deleteCookie",this.§9b§);
      }
      
      private function §8!G§() : void
      {
         var _loc1_:String = §2!c§.encode(this.data);
         §40§.§&'§("storeCookie",this.§9b§,_loc1_,§1Y§);
      }
      
      private function §87§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§9b§);
            for(i in this.data)
            {
               mySO.data[i] = this.data[i];
            }
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      private function §;!O§() : void
      {
         if(this.§[c§)
         {
            this.§?=§();
         }
         else
         {
            this.§5!P§();
         }
      }
      
      private function §5!P§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§9b§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function §?=§() : void
      {
         var returnObject:String = §40§.§&'§("readCookie",this.§9b§);
         try
         {
            this.data = §2!c§.§!"§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
