package §7!F§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   
   public class §1"]§ extends §<d§
   {
       
      
      private var §6V§:§7#5§;
      
      public function §1"]§(param1:String, param2:§7#5§, param3:Number)
      {
         super(param1,param3);
         this.§6V§ = param2;
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
         return §^"U§.§&"Z§(name,this.§6V§,_loc2_);
      }
   }
}
