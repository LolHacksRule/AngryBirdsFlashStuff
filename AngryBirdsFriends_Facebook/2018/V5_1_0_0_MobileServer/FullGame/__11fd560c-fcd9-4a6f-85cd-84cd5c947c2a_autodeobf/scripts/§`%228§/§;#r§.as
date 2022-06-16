package §`"8§
{
   import §^"S§.DisplayObject;
   import §^"S§.Sprite;
   
   public class §;#r§ extends §9"2§
   {
       
      
      private var §4Z§:§34§;
      
      public function §;#r§(param1:String, param2:§34§, param3:Number)
      {
         super(param1,param3);
         this.§4Z§ = param2;
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
         return §="?§.§8!$§(name,this.§4Z§,_loc3_);
      }
   }
}
