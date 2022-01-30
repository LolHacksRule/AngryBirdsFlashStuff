package §4!§
{
   public class §1!R§
   {
       
      
      private var §,p§:String;
      
      private var mName:String;
      
      private var §"B§:String;
      
      private var §6s§:Vector.<§ !M§>;
      
      public function §1!R§()
      {
         super();
         this.§6s§ = new Vector.<§ !M§>();
      }
      
      public function §]`§(param1:§ !M§) : void
      {
         this.§6s§.push(param1);
      }
      
      public function §7!n§() : Array
      {
         var _loc2_:§ !M§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§6s§)
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
         return this.§,p§;
      }
      
      public function set id(param1:String) : void
      {
         this.§,p§ = param1;
      }
      
      public function set brand(param1:String) : void
      {
         this.§"B§ = param1;
      }
      
      public function get brand() : String
      {
         return this.§"B§;
      }
   }
}
