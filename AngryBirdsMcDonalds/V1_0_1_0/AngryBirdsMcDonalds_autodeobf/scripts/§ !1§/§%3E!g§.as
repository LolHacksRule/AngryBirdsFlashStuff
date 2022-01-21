package § !1§
{
   import § L§.§>!M§;
   import §<G§.§6n§;
   import flash.net.SharedObject;
   
   public class §>!g§
   {
      
      protected static const §5!]§:int = 365;
      
      protected static const §0!m§:Array = [§%t§.CHROME];
       
      
      public var data:Object;
      
      private var §`o§:String = "";
      
      private var §%!0§:Boolean = false;
      
      private var §2!`§:String = "";
      
      public function §>!g§(param1:String)
      {
         super();
         this.§`o§ = §%t§.§5]§();
         this.§2!`§ = param1;
         this.§%!0§ = §0!m§.indexOf(this.§`o§) != -1;
         this.§!!S§();
      }
      
      public static function getLocal(param1:String) : §>!g§
      {
         return new §>!g§(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.§%!0§)
         {
            this.§%!^§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§2!`§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.§%!0§)
            {
               this.§ O§();
            }
            else
            {
               this.§`!O§();
            }
         }
      }
      
      private function §%!^§() : void
      {
         §6n§.§+Z§("deleteCookie",this.§2!`§);
      }
      
      private function § O§() : void
      {
         var _loc1_:String = §>!M§.encode(this.data);
         §6n§.§+Z§("storeCookie",this.§2!`§,_loc1_,§5!]§);
      }
      
      private function §`!O§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§2!`§);
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
      
      private function §!!S§() : void
      {
         if(this.§%!0§)
         {
            this.§=!c§();
         }
         else
         {
            this.§;,§();
         }
      }
      
      private function §;,§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§2!`§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function §=!c§() : void
      {
         var returnObject:String = §6n§.§+Z§("readCookie",this.§2!`§);
         try
         {
            this.data = §>!M§.§7!N§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
