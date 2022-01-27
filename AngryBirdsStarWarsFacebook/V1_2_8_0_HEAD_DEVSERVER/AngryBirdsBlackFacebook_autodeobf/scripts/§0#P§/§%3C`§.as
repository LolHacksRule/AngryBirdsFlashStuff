package §0#P§
{
   public class §<`§ extends §3"V§
   {
       
      
      public var access:String;
      
      public var type:String;
      
      public var declaredBy:String;
      
      public function §<`§(param1:XML)
      {
         super();
         name = param1.@name;
         this.access = param1.@access;
         this.type = param1.@type;
         this.declaredBy = param1.@declaredBy;
      }
      
      public function toString() : String
      {
         return "Acc: " + name + ":" + this.access + ":" + this.type + ":" + this.declaredBy;
      }
   }
}
