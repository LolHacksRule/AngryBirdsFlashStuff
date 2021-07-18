package §<w§
{
   public class §[!N§
   {
       
      
      protected var §0"1§:§8p§;
      
      protected var §else §:Object;
      
      protected var §@"R§:String;
      
      protected var §'F§:String;
      
      protected var §[!D§:String;
      
      public function §[!N§(param1:String, param2:String, param3:String)
      {
         this.§else § = {};
         super();
         this.§[!D§ = param3;
         this.§'F§ = param2;
         this.§@"R§ = param1;
      }
      
      public function §^"D§() : §8p§
      {
         if(!this.§0"1§)
         {
            this.§0"1§ = new §8p§(this.§'F§,this.§[!D§,this.§@"R§ + "/fb/friends",true);
         }
         return this.§0"1§;
      }
      
      public function injectData(param1:Object) : void
      {
         this.§0"1§ = new §8p§(this.§'F§,this.§[!D§,this.§@"R§ + "/fb/friends",true,param1);
      }
      
      public function §;8§(param1:String, param2:String, param3:Boolean = false) : §8p§
      {
         if(this.§else §[param2])
         {
            return this.§else §[param2];
         }
         return this.§else §[param2] = new §8p§(this.§'F§,this.§[!D§,this.§@"R§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3.toString(),false);
      }
      
      public function §4!f§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§else §[_loc2_])
            {
               this.§else §[_loc2_] = null;
            }
         }
      }
      
      public function §2Y§(param1:String) : §8p§
      {
         return this.§else §[param1];
      }
      
      public function §3";§(param1:String, param2:String) : Number
      {
         var _loc3_:§8p§ = this.§else §[param1] as §8p§;
         return _loc3_.§`N§(param2);
      }
      
      public function get §&"U§() : int
      {
         if(this.§0"1§ == null)
         {
            return -1;
         }
         return this.§0"1§.§&"U§;
      }
      
      public function getTotalStars() : int
      {
         if(this.§0"1§ == null)
         {
            return 0;
         }
         return this.§0"1§.§^!H§(this.§'F§);
      }
   }
}
