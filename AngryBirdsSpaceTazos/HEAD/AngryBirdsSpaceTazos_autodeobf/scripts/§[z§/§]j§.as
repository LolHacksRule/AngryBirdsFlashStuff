package §[z§
{
   import §26§.§3v§;
   import §3!-§.§&!+§;
   import flash.net.SharedObject;
   
   public class §]j§
   {
      
      protected static const §3!w§:int = 365;
      
      protected static const §4X§:Array = [§<m§.CHROME];
       
      
      public var data:Object;
      
      private var §;!X§:String = "";
      
      private var §@C§:Boolean = false;
      
      private var §5",§:String = "";
      
      public function §]j§(param1:String)
      {
         super();
         this.§;!X§ = §<m§.§"&§();
         this.§5",§ = param1;
         this.§@C§ = §4X§.indexOf(this.§;!X§) != -1;
         this.§2a§();
      }
      
      public static function getLocal(param1:String) : §]j§
      {
         return new §]j§(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.§@C§)
         {
            this.§'!R§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§5",§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.§@C§)
            {
               this.§^3§();
            }
            else
            {
               this.§&'§();
            }
         }
      }
      
      private function §'!R§() : void
      {
         §3v§.§0!Z§("deleteCookie",this.§5",§);
      }
      
      private function §^3§() : void
      {
         var _loc1_:String = §&!+§.encode(this.data);
         §3v§.§0!Z§("storeCookie",this.§5",§,_loc1_,§3!w§);
      }
      
      private function §&'§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§5",§);
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
      
      private function §2a§() : void
      {
         if(this.§@C§)
         {
            this.§!!+§();
         }
         else
         {
            this.§!T§();
         }
      }
      
      private function §!T§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§5",§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function §!!+§() : void
      {
         var returnObject:String = §3v§.§0!Z§("readCookie",this.§5",§);
         try
         {
            this.data = §&!+§.§`!W§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
