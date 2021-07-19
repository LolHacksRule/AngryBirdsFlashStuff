package §"!U§
{
   public class §7#9§ extends §6!J§
   {
       
      
      private var mId:String;
      
      private var §<#1§:String;
      
      public function §7#9§(param1:int, param2:int, param3:Number, param4:Number, param5:String)
      {
         super(param1,param2,param3,param4);
         this.mId = param5;
      }
      
      public static function §"!Y§(param1:Object) : §7#9§
      {
         return new §7#9§(param1.q,param1.fa,Number(param1.p),Number(param1.cp),param1.id);
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §9!+§() : String
      {
         return this.§<#1§;
      }
      
      public function set §9!+§(param1:String) : void
      {
         this.§<#1§ = param1;
      }
   }
}
