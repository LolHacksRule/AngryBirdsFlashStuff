package §8"§
{
   import §?!N§.ErrorPopup;
   
   public class § l§
   {
       
      
      private var §?"0§:uint;
      
      private var §@!_§:Vector.<§"#l§>;
      
      private var §8#+§:Vector.<§1$'§>;
      
      private var §?#I§:§ use§;
      
      private var §,$!§:Object;
      
      private var §7!e§:int;
      
      public function § l§(param1:Object)
      {
         var _loc3_:Object = null;
         var _loc4_:§"#l§ = null;
         super();
         this.§?"0§ = param1.d;
         var _loc2_:Array = param1.sw;
         this.§@!_§ = new Vector.<§"#l§>();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = new §"#l§(_loc3_);
            this.§@!_§.push(_loc4_);
         }
         this.§7!e§ = !!param1.rid ? int(param1.rid) : -1;
      }
      
      public function §-$-§() : Boolean
      {
         return this.§7!e§ != -1;
      }
      
      public function §9"_§() : int
      {
         return this.§7!e§;
      }
      
      public function §`!]§() : Vector.<§"#l§>
      {
         return this.§@!_§.concat();
      }
      
      public function §;$!§() : § use§
      {
         return this.§?#I§;
      }
      
      public function §?"x§() : Object
      {
         return this.§,$!§;
      }
      
      function §!#X§(param1:Object) : void
      {
         this.§,$!§ = param1;
      }
      
      public function §]C§(param1:int) : §"#l§
      {
         var _loc4_:§"#l§ = null;
         if(param1 < 0)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"invalid id for spinning wheel"));
         }
         var _loc2_:§"#l§ = null;
         var _loc3_:Vector.<§"#l§> = this.§`!]§();
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
