package §2X§
{
   public class §5L§
   {
       
      
      private var §3!J§:String;
      
      private var mName:String;
      
      private var §3A§:String;
      
      private var §[n§:Vector.<§3Q§>;
      
      public function §5L§()
      {
         super();
         this.§[n§ = new Vector.<§3Q§>();
      }
      
      public function §4B§(param1:§3Q§) : void
      {
         this.§[n§.push(param1);
      }
      
      public function §'!k§() : Array
      {
         var _loc2_:§3Q§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§[n§)
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
         return this.§3!J§;
      }
      
      public function set id(param1:String) : void
      {
         this.§3!J§ = param1;
      }
      
      public function set brand(param1:String) : void
      {
         this.§3A§ = param1;
      }
      
      public function get brand() : String
      {
         return this.§3A§;
      }
   }
}
