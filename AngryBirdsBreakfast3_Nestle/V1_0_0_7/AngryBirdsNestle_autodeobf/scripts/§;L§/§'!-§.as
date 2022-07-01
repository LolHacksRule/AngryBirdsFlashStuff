package §;L§
{
   import § !=§.DisplayObject;
   import § !=§.Sprite;
   
   public class §'!-§ extends §%_§
   {
       
      
      private var §'!2§:§"!X§;
      
      private var § "$§:String;
      
      public function §'!-§(param1:String, param2:§"!X§, param3:Number)
      {
         super(param3);
         this.§ "$§ = param1;
         this.§'!2§ = param2;
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
         return §?D§.§-!j§(this.§ "$§,this.§'!2§,_loc2_);
      }
   }
}
