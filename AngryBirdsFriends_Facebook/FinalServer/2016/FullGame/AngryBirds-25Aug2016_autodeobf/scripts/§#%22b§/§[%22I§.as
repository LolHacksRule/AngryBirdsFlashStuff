package §#"b§
{
   public class §["I§
   {
       
      
      private var §3"3§:uint;
      
      private var §8!9§:Vector.<§-O§>;
      
      private var §@!e§:Vector.<§6!A§>;
      
      private var §&#W§:§'q§;
      
      private var §-l§:§'q§;
      
      private var §'#-§:Object;
      
      private var §""1§:int;
      
      public function §["I§(param1:Object)
      {
         var _loc3_:Object = null;
         var _loc4_:§-O§ = null;
         super();
         this.§3"3§ = param1.d;
         var _loc2_:Array = param1.sw;
         this.§8!9§ = new Vector.<§-O§>();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = new §-O§(_loc3_);
            this.§8!9§.push(_loc4_);
         }
         this.§""1§ = !!param1.rid ? int(param1.rid) : -1;
      }
      
      public function §'"7§() : Boolean
      {
         return this.§""1§ != -1;
      }
      
      public function §"#<§() : int
      {
         return this.§""1§;
      }
      
      public function §<#A§() : Vector.<§-O§>
      {
         return this.§8!9§.concat();
      }
      
      public function §9#d§() : §'q§
      {
         return this.§&#W§;
      }
      
      public function §6#k§() : §'q§
      {
         return this.§-l§;
      }
      
      public function §%4§() : Object
      {
         return this.§'#-§;
      }
      
      function § #o§(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Array = param1.items;
         this.§'#-§ = param1;
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.i != "PiggyCurrency")
            {
               this.§&#W§ = new §'q§(_loc3_);
            }
            else
            {
               this.§-l§ = new §'q§(_loc3_);
            }
         }
      }
      
      public function §0V§(param1:int) : §-O§
      {
         var _loc4_:§-O§ = null;
         if(param1 < 0)
         {
            throw new Error("invalid id for spinning wheel");
         }
         var _loc2_:§-O§ = null;
         var _loc3_:Vector.<§-O§> = this.§<#A§();
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
