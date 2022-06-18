package §7"T§
{
   import §,#e§.DisplayObject;
   import §,#e§.Sprite;
   
   public class §'!'§ extends §!#F§
   {
       
      
      private var §-i§:§#"^§;
      
      public function §'!'§(param1:String, param2:§#"^§, param3:Number)
      {
         super(param1,param3);
         this.§-i§ = param2;
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
         return §,o§.§'"_§(name,this.§-i§,_loc3_);
      }
   }
}
