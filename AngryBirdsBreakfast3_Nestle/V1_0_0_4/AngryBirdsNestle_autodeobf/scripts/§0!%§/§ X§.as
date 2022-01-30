package §0!%§
{
   public class § X§
   {
       
      
      private var §[![§:String;
      
      private var mName:String;
      
      private var §2!2§:String;
      
      private var §#!Z§:Vector.<§+c§>;
      
      public function § X§()
      {
         super();
         this.§#!Z§ = new Vector.<§+c§>();
      }
      
      public function §,9§(param1:§+c§) : void
      {
         this.§#!Z§.push(param1);
      }
      
      public function §3w§() : Array
      {
         var _loc2_:§+c§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§#!Z§)
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
         return this.§[![§;
      }
      
      public function set id(param1:String) : void
      {
         this.§[![§ = param1;
      }
      
      public function set brand(param1:String) : void
      {
         this.§2!2§ = param1;
      }
      
      public function get brand() : String
      {
         return this.§2!2§;
      }
   }
}
