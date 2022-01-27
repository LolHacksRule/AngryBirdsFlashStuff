package §!!r§
{
   import §!!s§.§;4§;
   import §4!Z§.§%^§;
   import flash.net.SharedObject;
   
   public class §&""§
   {
      
      protected static const §4"%§:int = 365;
      
      protected static const §6!i§:Array = [§"N§.CHROME];
       
      
      public var data:Object;
      
      private var §]!^§:String = "";
      
      private var §""+§:Boolean = false;
      
      private var §&l§:String = "";
      
      public function §&""§(param1:String)
      {
         super();
         this.§]!^§ = §"N§.§0&§();
         this.§&l§ = param1;
         this.§""+§ = §6!i§.indexOf(this.§]!^§) != -1;
         this.§,!x§();
      }
      
      public static function getLocal(param1:String) : §&""§
      {
         return new §&""§(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.§""+§)
         {
            this.§=!'§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§&l§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.§""+§)
            {
               this.§8!=§();
            }
            else
            {
               this.§>""§();
            }
         }
      }
      
      private function §=!'§() : void
      {
         §%^§.§]"3§("deleteCookie",this.§&l§);
      }
      
      private function §8!=§() : void
      {
         var _loc1_:String = §;4§.encode(this.data);
         §%^§.§]"3§("storeCookie",this.§&l§,_loc1_,§4"%§);
      }
      
      private function §>""§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§&l§);
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
      
      private function §,!x§() : void
      {
         if(this.§""+§)
         {
            this.§#o§();
         }
         else
         {
            this.§8!'§();
         }
      }
      
      private function §8!'§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§&l§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function §#o§() : void
      {
         var returnObject:String = §%^§.§]"3§("readCookie",this.§&l§);
         try
         {
            this.data = §;4§.§2!#§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
