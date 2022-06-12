package §@"§
{
   import §9$§.DisplayObject;
   import §9$§.Sprite;
   
   public class §?#k§ extends §;!"§
   {
       
      
      private var §5!H§:§&!=§;
      
      public function §?#k§(param1:String, param2:§&!=§, param3:Number)
      {
         super(param1,param3);
         this.§5!H§ = param2;
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
         return §'!u§.§4"h§(name,this.§5!H§,_loc3_);
      }
   }
}
