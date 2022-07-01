package §!!n§
{
   public class §#%§
   {
       
      
      private var §=H§:String;
      
      private var mName:String;
      
      private var §<"0§:String;
      
      private var §6#§:Vector.<§>!^§>;
      
      public function §#%§()
      {
         super();
         this.§6#§ = new Vector.<§>!^§>();
      }
      
      public function §-!0§(param1:§>!^§) : void
      {
         this.§6#§.push(param1);
      }
      
      public function §0!7§() : Array
      {
         var _loc2_:§>!^§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§6#§)
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
         return this.§=H§;
      }
      
      public function set id(param1:String) : void
      {
         this.§=H§ = param1;
      }
      
      public function set brand(param1:String) : void
      {
         this.§<"0§ = param1;
      }
      
      public function get brand() : String
      {
         return this.§<"0§;
      }
   }
}
