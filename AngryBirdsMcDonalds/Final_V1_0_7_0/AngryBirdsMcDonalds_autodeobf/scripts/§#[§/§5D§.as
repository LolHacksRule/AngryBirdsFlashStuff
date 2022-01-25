package §#[§
{
   import § true§.§'8§;
   import §&C§.§0!5§;
   import §0@§.Sprite;
   import §7! §.§4n§;
   
   public class §5D§ extends §'8§
   {
       
      
      public var loop:Boolean = false;
      
      private var §]!D§:Number = 0;
      
      public function §5D§(param1:§0!5§, param2:Sprite, param3:§4n§, param4:Number)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = §<;§ * param1;
         if(this.loop)
         {
            if(-_loc3_ + this.§]!D§ + §1=§ < 0)
            {
               this.§]!D§ += §1=§;
            }
            else if(-_loc3_ + this.§]!D§ - §1=§ > §1=§)
            {
               this.§]!D§ -= §1=§;
            }
         }
         §#Y§.x = -_loc3_ + this.§]!D§;
         §#Y§.y = -param2;
         §3!3§();
      }
   }
}
