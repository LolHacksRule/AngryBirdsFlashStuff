package §5,§
{
   import §?Q§.ErrorPopup;
   
   public class §,$-§
   {
       
      
      private var §"#a§:uint;
      
      private var §<!q§:Vector.<§&"G§>;
      
      private var §+r§:Vector.<§,5§>;
      
      private var §7"?§:§@"m§;
      
      private var §0#,§:Object;
      
      private var §]"k§:int;
      
      public function §,$-§(param1:Object)
      {
         var _loc3_:Object = null;
         var _loc4_:§&"G§ = null;
         super();
         this.§"#a§ = param1.d;
         var _loc2_:Array = param1.sw;
         this.§<!q§ = new Vector.<§&"G§>();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = new §&"G§(_loc3_);
            this.§<!q§.push(_loc4_);
         }
         this.§]"k§ = !!param1.rid ? int(param1.rid) : -1;
      }
      
      public function §2U§() : Boolean
      {
         return this.§]"k§ != -1;
      }
      
      public function §>N§() : int
      {
         return this.§]"k§;
      }
      
      public function §["=§() : Vector.<§&"G§>
      {
         return this.§<!q§.concat();
      }
      
      public function §;![§() : §@"m§
      {
         return this.§7"?§;
      }
      
      public function §!$1§() : Object
      {
         return this.§0#,§;
      }
      
      function §[`§(param1:Object) : void
      {
         this.§0#,§ = param1;
      }
      
      public function §`$1§(param1:int) : §&"G§
      {
         var _loc4_:§&"G§ = null;
         if(param1 < 0)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"invalid id for spinning wheel"));
         }
         var _loc2_:§&"G§ = null;
         var _loc3_:Vector.<§&"G§> = this.§["=§();
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
