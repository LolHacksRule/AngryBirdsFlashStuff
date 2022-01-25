package §9!!§
{
   public class §+!c§
   {
       
      
      private var §?!j§:String;
      
      private var mName:String;
      
      private var §0!D§:String;
      
      private var §0,§:String;
      
      private var §]V§:String;
      
      private var §+",§:Vector.<§'E§>;
      
      public function §+!c§()
      {
         super();
         this.§+",§ = new Vector.<§'E§>();
      }
      
      public function §continue§(param1:§'E§) : void
      {
         this.§+",§.push(param1);
      }
      
      public function §&g§() : Array
      {
         var _loc2_:§'E§ = null;
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
         return this.§0!D§;
      }
      
      public function set nativeName(param1:String) : void
      {
         this.§0!D§ = param1;
      }
      
      public function get alphabeticName() : String
      {
         return this.§0,§;
      }
      
      public function set alphabeticName(param1:String) : void
      {
         this.§0,§ = param1;
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
