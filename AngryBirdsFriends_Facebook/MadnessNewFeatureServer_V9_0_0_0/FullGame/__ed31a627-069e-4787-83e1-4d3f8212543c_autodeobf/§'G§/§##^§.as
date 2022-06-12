package §'G§
{
   import §6#H§.DisplayObject;
   import §6#H§.Sprite;
   
   public class §##^§ extends §2#4§
   {
       
      
      private var §?#r§:§3$§;
      
      public function §##^§(param1:String, param2:§3$§, param3:Number)
      {
         super(param1,param3);
         this.§?#r§ = param2;
      }
      
      override public function updateDisplayObject(param1:DisplayObject, param2:Boolean = true) : DisplayObject
      {
         var _loc3_:Sprite = param1 as Sprite;
         if(!_loc3_)
         {
            if(param1)
            {
               param1.dispose();
            }
         }
         return §0!d§.§@$;§(name,this.§?#r§,_loc3_);
      }
   }
}
