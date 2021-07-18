package §7!0§
{
   import §,!3§.§#"C§;
   import §<"8§.§6!c§;
   import flash.net.SharedObject;
   
   public class §";§
   {
      
      protected static const §"!`§:int = 365;
      
      protected static const §'""§:Array = [§`!_§.CHROME];
       
      
      public var data:Object;
      
      private var §+!@§:String = "";
      
      private var §^!M§:Boolean = false;
      
      private var §1"5§:String = "";
      
      public function §";§(param1:String)
      {
         super();
         this.§+!@§ = §`!_§.§@e§();
         this.§1"5§ = param1;
         this.§^!M§ = §'""§.indexOf(this.§+!@§) != -1;
         this.§8![§();
      }
      
      public static function getLocal(param1:String) : §";§
      {
         return new §";§(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.§^!M§)
         {
            this.§6"8§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§1"5§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.§^!M§)
            {
               this.§'!j§();
            }
            else
            {
               this.§!!i§();
            }
         }
      }
      
      private function §6"8§() : void
      {
         §6!c§.§?!6§("deleteCookie",this.§1"5§);
      }
      
      private function §'!j§() : void
      {
         var _loc1_:String = §#"C§.encode(this.data);
         §6!c§.§?!6§("storeCookie",this.§1"5§,_loc1_,§"!`§);
      }
      
      private function §!!i§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§1"5§);
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
      
      private function §8![§() : void
      {
         if(this.§^!M§)
         {
            this.§9`§();
         }
         else
         {
            this.§5c§();
         }
      }
      
      private function §5c§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§1"5§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function §9`§() : void
      {
         var returnObject:String = §6!c§.§?!6§("readCookie",this.§1"5§);
         try
         {
            this.data = §#"C§.§+c§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
