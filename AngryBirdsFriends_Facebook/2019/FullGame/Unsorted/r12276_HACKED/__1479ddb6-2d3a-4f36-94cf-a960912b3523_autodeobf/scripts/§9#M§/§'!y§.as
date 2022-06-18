package §9#M§
{
   import §#Z§.DisplayObject;
   import §#Z§.Sprite;
   
   public class §'!y§ extends §1#o§
   {
       
      
      private var §]#o§:§%"=§;
      
      public function §'!y§(param1:String, param2:§%"=§, param3:Number)
      {
         super(param1,param3);
         this.§]#o§ = param2;
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
         return §7!D§.§6"F§(name,this.§]#o§,_loc3_);
      }
   }
}
