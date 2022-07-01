package §6!?§
{
   import §0!Y§.DisplayObject;
   import §0!Y§.Sprite;
   
   public class §&v§ extends §1U§
   {
       
      
      private var §#=§:§`!O§;
      
      private var §>"'§:String;
      
      public function §&v§(param1:String, param2:§`!O§, param3:Number)
      {
         super(param3);
         this.§>"'§ = param1;
         this.§#=§ = param2;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:Sprite = param1 as Sprite;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
         }
         return §0+§.§'H§(this.§>"'§,this.§#=§,_loc2_);
      }
   }
}
