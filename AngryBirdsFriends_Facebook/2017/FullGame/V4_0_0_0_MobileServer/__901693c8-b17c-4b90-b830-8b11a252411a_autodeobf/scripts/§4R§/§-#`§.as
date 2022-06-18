package §4R§
{
   public class §-#`§
   {
       
      
      private var §8$>§:uint;
      
      private var §5!7§:Vector.<§+!J§>;
      
      private var §,!S§:Vector.<§!"A§>;
      
      private var §&$ §:§ e§;
      
      private var § !+§:Object;
      
      private var §'"M§:int;
      
      public function §-#`§(param1:Object)
      {
         var _loc3_:Object = null;
         var _loc4_:§+!J§ = null;
         super();
         this.§8$>§ = param1.d;
         var _loc2_:Array = param1.sw;
         this.§5!7§ = new Vector.<§+!J§>();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = new §+!J§(_loc3_);
            this.§5!7§.push(_loc4_);
         }
         this.§'"M§ = !!param1.rid ? int(param1.rid) : -1;
      }
      
      public function §-P§() : Boolean
      {
         return this.§'"M§ != -1;
      }
      
      public function §&c§() : int
      {
         return this.§'"M§;
      }
      
      public function §&#Z§() : Vector.<§+!J§>
      {
         return this.§5!7§.concat();
      }
      
      public function §>"b§() : § e§
      {
         return this.§&$ §;
      }
      
      public function §9!'§() : Object
      {
         return this.§ !+§;
      }
      
      function §;!f§(param1:Object) : void
      {
         this.§ !+§ = param1;
      }
      
      public function §!"4§(param1:int) : §+!J§
      {
         var _loc4_:§+!J§ = null;
         if(param1 < 0)
         {
            throw new Error("invalid id for spinning wheel");
         }
         var _loc2_:§+!J§ = null;
         var _loc3_:Vector.<§+!J§> = this.§&#Z§();
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
