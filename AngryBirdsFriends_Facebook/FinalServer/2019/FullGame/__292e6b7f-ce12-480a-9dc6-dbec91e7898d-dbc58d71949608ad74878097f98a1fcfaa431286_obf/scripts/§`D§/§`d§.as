package §`D§
{
   public class §`d§ extends §'"j§
   {
       
      
      private var mId:String;
      
      private var §#"P§:String;
      
      public function §`d§(param1:int, param2:int, param3:Number, param4:Number, param5:String)
      {
         super(param1,param2,param3,param4);
         this.mId = param5;
      }
      
      public static function §4G§(param1:Object) : §`d§
      {
         return new §`d§(param1.q,param1.fa,Number(param1.p),Number(param1.cp),param1.id);
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §>"_§() : String
      {
         return this.§#"P§;
      }
      
      public function set §>"_§(param1:String) : void
      {
         this.§#"P§ = param1;
      }
   }
}
