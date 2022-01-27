package §4&§
{
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   
   public class §#"2§ extends §else§
   {
       
      
      private var §7!T§:§,C§;
      
      private var §7!'§:String;
      
      public function §#"2§(param1:String, param2:§,C§, param3:Number)
      {
         super(param3);
         this.§7!'§ = param1;
         this.§7!T§ = param2;
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
         return § j§.§#"+§(this.§7!'§,this.§7!T§,_loc2_);
      }
   }
}
