package §0#P§
{
   public class §,"v§ extends §3"V§
   {
       
      
      public var declaredBy:String;
      
      public var returnType:String;
      
      public var params:Vector.<§?!§>;
      
      public function §,"v§(param1:XML)
      {
         var _loc2_:XML = null;
         this.params = new Vector.<§?!§>();
         super();
         name = param1.@name;
         this.declaredBy = param1.@declaredBy;
         this.returnType = param1.@returnType;
         for each(_loc2_ in param1..parameter)
         {
            this.params.push(new §?!§(_loc2_));
         }
      }
   }
}
