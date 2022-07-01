package §'9§
{
   public class §+A§
   {
       
      
      private var §]!U§:String;
      
      private var mName:String;
      
      private var §=!n§:String;
      
      private var §&#§:Vector.<§-!4§>;
      
      public function §+A§()
      {
         super();
         this.§&#§ = new Vector.<§-!4§>();
      }
      
      public function §5@§(param1:§-!4§) : void
      {
         this.§&#§.push(param1);
      }
      
      public function §!!y§() : Array
      {
         var _loc2_:§-!4§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§&#§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get id() : String
      {
         return this.§]!U§;
      }
      
      public function set id(param1:String) : void
      {
         this.§]!U§ = param1;
      }
      
      public function set brand(param1:String) : void
      {
         this.§=!n§ = param1;
      }
      
      public function get brand() : String
      {
         return this.§=!n§;
      }
   }
}
