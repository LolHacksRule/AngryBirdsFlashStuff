package §`!b§
{
   public class §;!m§ implements §''§
   {
       
      
      protected var § !X§:§1X§;
      
      protected var §&5§:Object;
      
      protected var §?"]§:String;
      
      protected var §!!B§:String;
      
      protected var §+?§:String;
      
      public function §;!m§(param1:String, param2:String, param3:String, param4:Object)
      {
         this.§&5§ = {};
         super();
         this.§+?§ = param3;
         this.§!!B§ = param2;
         this.§?"]§ = param1;
         this.§ !X§ = new §1X§(this.§!!B§,this.§+?§,this.§?"]§ + "/fb/friends",true,param4);
      }
      
      public function getTotalScores() : §<!9§
      {
         return this.§ !X§;
      }
      
      public function §&"L§(param1:String, param2:String, param3:Boolean) : §<!9§
      {
         if(this.§&5§[param2])
         {
            return this.§&5§[param2];
         }
         return this.§&5§[param2] = new §1X§(this.§!!B§,this.§+?§,this.§?"]§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3,false);
      }
      
      public function §49§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§&5§[_loc2_])
            {
               this.§&5§[_loc2_] = null;
            }
         }
      }
      
      public function §]#"§(param1:String) : §1X§
      {
         return this.§&5§[param1];
      }
      
      public function get §[!s§() : int
      {
         if(this.§ !X§ == null)
         {
            return -1;
         }
         return this.§ !X§.§[!s§;
      }
   }
}
