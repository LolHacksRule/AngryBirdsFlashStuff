package §^!&§
{
   import § h§.ErrorPopup;
   
   public class §'-§
   {
       
      
      private var §=!f§:uint;
      
      private var §0m§:Vector.<§--§>;
      
      private var §1!K§:Vector.<§0$,§>;
      
      private var §!k§:§0"p§;
      
      private var §4$?§:Object;
      
      private var §2"+§:int;
      
      public function §'-§(param1:Object)
      {
         var _loc3_:Object = null;
         var _loc4_:§--§ = null;
         super();
         this.§=!f§ = param1.d;
         var _loc2_:Array = param1.sw;
         this.§0m§ = new Vector.<§--§>();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = new §--§(_loc3_);
            this.§0m§.push(_loc4_);
         }
         this.§2"+§ = !!param1.rid ? int(param1.rid) : -1;
      }
      
      public function §@$&§() : Boolean
      {
         return this.§2"+§ != -1;
      }
      
      public function §!v§() : int
      {
         return this.§2"+§;
      }
      
      public function §9$#§() : Vector.<§--§>
      {
         return this.§0m§.concat();
      }
      
      public function §]"T§() : §0"p§
      {
         return this.§!k§;
      }
      
      public function §4!+§() : Object
      {
         return this.§4$?§;
      }
      
      function §"$§(param1:Object) : void
      {
         this.§4$?§ = param1;
      }
      
      public function §>$4§(param1:int) : §--§
      {
         var _loc4_:§--§ = null;
         if(param1 < 0)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"invalid id for spinning wheel"));
         }
         var _loc2_:§--§ = null;
         var _loc3_:Vector.<§--§> = this.§9$#§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.id == param1)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         return _loc2_;
      }
   }
}
