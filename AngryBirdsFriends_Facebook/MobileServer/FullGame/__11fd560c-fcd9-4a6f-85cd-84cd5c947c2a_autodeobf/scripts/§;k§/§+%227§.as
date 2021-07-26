package §;k§
{
   import §?P§.ErrorPopup;
   
   public class §+"7§
   {
       
      
      private var §%%§:uint;
      
      private var §"#l§:Vector.<§-"K§>;
      
      private var §#!'§:Vector.<§6!X§>;
      
      private var §]!f§:§function§;
      
      private var §>>§:Object;
      
      private var §2"+§:int;
      
      public function §+"7§(param1:Object)
      {
         var _loc3_:Object = null;
         var _loc4_:§-"K§ = null;
         super();
         this.§%%§ = param1.d;
         var _loc2_:Array = param1.sw;
         this.§"#l§ = new Vector.<§-"K§>();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = new §-"K§(_loc3_);
            this.§"#l§.push(_loc4_);
         }
         this.§2"+§ = !!param1.rid ? int(param1.rid) : -1;
      }
      
      public function §9#g§() : Boolean
      {
         return this.§2"+§ != -1;
      }
      
      public function §>$+§() : int
      {
         return this.§2"+§;
      }
      
      public function §,!0§() : Vector.<§-"K§>
      {
         return this.§"#l§.concat();
      }
      
      public function §4$;§() : §function§
      {
         return this.§]!f§;
      }
      
      public function §0!&§() : Object
      {
         return this.§>>§;
      }
      
      function §@"W§(param1:Object) : void
      {
         this.§>>§ = param1;
      }
      
      public function §-"b§(param1:int) : §-"K§
      {
         var _loc4_:§-"K§ = null;
         if(param1 < 0)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"invalid id for spinning wheel"));
         }
         var _loc2_:§-"K§ = null;
         var _loc3_:Vector.<§-"K§> = this.§,!0§();
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
