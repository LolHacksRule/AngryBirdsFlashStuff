package static
{
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import §1"b§.§>l§;
   import flash.utils.Dictionary;
   
   public class §='§
   {
       
      
      private var §"#E§:Dictionary;
      
      public function §='§(param1:§>l§)
      {
         this.§"#E§ = new Dictionary();
         super();
         param1.addCallback(§""A§.§]!9§,this.§3"?§);
         param1.addCallback(§""A§.§-!'§,this.§<'§);
      }
      
      private function §<'§(param1:§7",§) : void
      {
         delete this.§"#E§[param1.data.title.toLowerCase()];
      }
      
      private function §3"?§(param1:§7",§) : void
      {
         this.§"#E§[param1.data.title.toLowerCase()] = param1.data;
      }
      
      public function §;!Q§(param1:String, param2:String) : void
      {
         this.§"#E§[param1.toLowerCase()] = new §-J§(param1,param2);
      }
      
      public function §'T§(param1:String) : String
      {
         if(this.§"#E§[param1.toLowerCase()] != null)
         {
            return §-J§(this.§"#E§[param1.toLowerCase()]).toString();
         }
         return "No such topic \'" + param1 + "\'";
      }
      
      public function §,"n§() : String
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc1_:String = "Table of contents:\n";
         var _loc2_:Array = [];
         for(_loc3_ in this.§"#E§)
         {
            _loc2_.push(this.§"#E§[_loc3_]);
         }
         _loc2_.sortOn("title");
         _loc4_ = _loc2_.length;
         while(_loc4_--)
         {
            _loc1_ += "\t" + _loc2_[_loc4_].title;
         }
         return _loc1_;
      }
   }
}
