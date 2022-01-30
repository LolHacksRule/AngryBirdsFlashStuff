package §?""§
{
   import §!!A§.§""5§;
   
   public class §^!K§
   {
      
      private static var §[v§:§^!K§;
       
      
      private var §"!T§:§""5§;
      
      private var §?!A§:int = 50;
      
      private var §=!@§:Vector.<String>;
      
      public function §^!K§()
      {
         super();
         this.§"!T§ = new §""5§(1);
         this.§[!8§();
      }
      
      public static function get §'!o§() : §^!K§
      {
         if(§[v§ == null)
         {
            §[v§ = new §^!K§();
         }
         return §[v§;
      }
      
      public function §[!8§() : void
      {
         this.§=!@§ = new Vector.<String>();
      }
      
      public function §9e§() : void
      {
         this.§=!@§ = null;
      }
      
      public function §2!n§(param1:String) : void
      {
         this.§=!@§.push(param1);
      }
      
      public function get §&!U§() : int
      {
         return this.§?!A§;
      }
      
      public function set §&!U§(param1:int) : void
      {
         this.§?!A§ = param1;
      }
      
      public function §`"&§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§=!@§ == null)
         {
            return true;
         }
         for each(_loc1_ in this.§=!@§)
         {
            if(_loc1_.indexOf("BIRD_") == 0)
            {
               return true;
            }
         }
         return false;
      }
   }
}
