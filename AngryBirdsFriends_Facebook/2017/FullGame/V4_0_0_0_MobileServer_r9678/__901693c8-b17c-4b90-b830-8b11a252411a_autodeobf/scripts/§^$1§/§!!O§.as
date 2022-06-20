package §^$1§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §7"&§.§!"v§;
   import §>!5§.§#-§;
   
   public class §!!O§ extends §#-§
   {
       
      
      public function §!!O§(param1:Sprite, param2:b2World, param3:§!"v§)
      {
         super(param1,param2,param3);
      }
      
      protected function §5#'§(param1:Number, param2:Number) : Number
      {
         if(isNaN(param1))
         {
            param1 = 0;
         }
         if(isNaN(param2))
         {
            param2 = 0;
         }
         return param1 + (param2 - param1) * Math.random();
      }
   }
}
