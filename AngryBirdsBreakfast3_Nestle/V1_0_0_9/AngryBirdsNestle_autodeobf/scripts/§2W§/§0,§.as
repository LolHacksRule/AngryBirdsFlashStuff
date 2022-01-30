package §2W§
{
   public class §0,§
   {
       
      
      private var §?!j§:String;
      
      private var mName:String;
      
      private var §+!c§:String;
      
      private var §]V§:String;
      
      private var §+",§:Vector.<§0!D§>;
      
      public function §0,§()
      {
         super();
         this.§+",§ = new Vector.<§0!D§>();
      }
      
      public function §continue§(param1:§0!D§) : void
      {
         this.§+",§.push(param1);
      }
      
      public function §=!!§() : Array
      {
         var _loc2_:§0!D§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§+",§)
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
      
      public function get nativeName() : String
      {
         return this.§+!c§;
      }
      
      public function set nativeName(param1:String) : void
      {
         this.§+!c§ = param1;
      }
      
      public function get id() : String
      {
         return this.§?!j§;
      }
      
      public function set id(param1:String) : void
      {
         this.§?!j§ = param1;
      }
      
      public function set brand(param1:String) : void
      {
         this.§]V§ = param1;
      }
      
      public function get brand() : String
      {
         return this.§]V§;
      }
   }
}
