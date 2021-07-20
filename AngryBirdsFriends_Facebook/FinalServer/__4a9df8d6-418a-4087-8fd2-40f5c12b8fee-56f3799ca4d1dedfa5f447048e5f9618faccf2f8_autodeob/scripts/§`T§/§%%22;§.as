package §`T§
{
   import §>z§.ErrorPopup;
   
   public class §%";§
   {
       
      
      private var §#"W§:uint;
      
      private var §`"e§:Vector.<§^#i§>;
      
      private var §7"'§:Vector.<§1!7§>;
      
      private var §6$E§:§^"2§;
      
      private var § #m§:Object;
      
      private var §9$7§:int;
      
      public function §%";§(param1:Object)
      {
         var _loc3_:Object = null;
         var _loc4_:§^#i§ = null;
         super();
         this.§#"W§ = param1.d;
         var _loc2_:Array = param1.sw;
         this.§`"e§ = new Vector.<§^#i§>();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = new §^#i§(_loc3_);
            this.§`"e§.push(_loc4_);
         }
         this.§9$7§ = !!param1.rid ? int(param1.rid) : -1;
      }
      
      public function §5P§() : Boolean
      {
         return this.§9$7§ != -1;
      }
      
      public function §"!s§() : int
      {
         return this.§9$7§;
      }
      
      public function §?$A§() : Vector.<§^#i§>
      {
         return this.§`"e§.concat();
      }
      
      public function §+j§() : §^"2§
      {
         return this.§6$E§;
      }
      
      public function §^!R§() : Object
      {
         return this.§ #m§;
      }
      
      function §9Y§(param1:Object) : void
      {
         this.§ #m§ = param1;
      }
      
      public function §2f§(param1:int) : §^#i§
      {
         var _loc4_:§^#i§ = null;
         if(param1 < 0)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"invalid id for spinning wheel"));
         }
         var _loc2_:§^#i§ = null;
         var _loc3_:Vector.<§^#i§> = this.§?$A§();
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
