package §3"$§
{
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   
   public class §3!r§ extends §7"u§
   {
       
      
      private var §-#7§:§&"0§;
      
      public function §3!r§(param1:String, param2:§&"0§, param3:Number)
      {
         super(param1,param3);
         this.§-#7§ = param2;
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
         return §&#7§.§^"X§(name,this.§-#7§,_loc2_);
      }
   }
}
