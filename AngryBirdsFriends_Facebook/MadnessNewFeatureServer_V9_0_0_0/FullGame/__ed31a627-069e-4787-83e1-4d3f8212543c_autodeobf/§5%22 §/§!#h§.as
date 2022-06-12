package §5" §
{
   public class §!#h§ extends §5u§
   {
       
      
      private var mId:String;
      
      private var §+f§:String;
      
      public function §!#h§(param1:int, param2:int, param3:Number, param4:Number, param5:String)
      {
         super(param1,param2,param3,param4);
         this.mId = param5;
      }
      
      public static function §^$B§(param1:Object) : §!#h§
      {
         return new §!#h§(param1.q,param1.fa,Number(param1.p),Number(param1.cp),param1.id);
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §>7§() : String
      {
         return this.§+f§;
      }
      
      public function set §>7§(param1:String) : void
      {
         this.§+f§ = param1;
      }
   }
}
